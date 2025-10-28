#!/bin/bash
# username.sh
# Thien Scofield
# CPSC298

#!/bin/bash
# USERNAME.sh — validate each line of a file containing USERNAME codes

echo "Username must be 3-12 characters long"
echo "Username must start with a lower case letter"
echo "The only symbols allowed are lower case letters, numbers, and the underscore symbol"

while read -r USERNAME; do
  
  echo "Username must be 3-12 characters long"
  echo "Username must start with a lower case letter"
  echo "The only symbols allowed are lower case letters, numbers, and the underscore symbol"
  
  
  if echo "$USERNAME" | grep -Eq "^[a-z][a-z0-9_]{2,11}$"; then
    echo "$USERNAME → Valid USERNAME "
    break
  else
    echo "$USERNAME → Invalid USERNAME "
  fi
done