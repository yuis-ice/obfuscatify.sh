#!/bin/sh

# save current dir to turn back here after script was finished.
pwd=$PWD

cd /tmp/

echo "Paste your obfuscator-want-to scripts here."
cat > input.js

javascript-obfuscator input.js --output output.js --compact true --control-flow-flattening true --control-flow-flattening-threshold 1  --dead-code-injection true --dead-code-injection-threshold 1 --identifier-names-generator hexadecimal --identifiers-prefix template --rotate-string-array true --self-defending true --string-array true --string-array-encoding rc4 --string-array-threshold 1 --target browser --transform-object-keys true --unicode-escape-sequence false

echo "The JS code obfuscatify normally. You can see output obfuscalizing code at $(realpath output.js)"

# if you are windows 10 WSL user, to copy output with below code.
cat output.js | clip.exe

cd $pwd
