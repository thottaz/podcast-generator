#!/bin/bash

echo "==============="

git congig --global user.name "${GITHUB_ACTOR}"
git congig --global user.email "${INPUT_EMAIL}"
git congig --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"

git push --set-upstream orgin main

echo "==============="