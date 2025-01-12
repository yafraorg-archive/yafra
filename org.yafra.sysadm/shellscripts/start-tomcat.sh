#!/bin/sh
#
#  Copyright 2002 yafra.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
# start tomee
#
TOMEE_HOME=/work/tomee
if [ -n "$1" ]; then
	TOMEE_HOME="$1"
fi
export TOMEE_HOME

echo "starting tomee in path $TOMEE_HOME"
$TOMEE_HOME/bin/startup.sh run
sleep 4

# openejb standalone
#/opt/openejb-3.1.2/bin/openejb start &
#/opt/openejb-3.1.2/bin/openejb deploy classes/org.yafra.server.ear-openejb.ear

