echo "Create shortcuts for commands ."
echo "This program made by yuosaf alharbi @yuosaf01_2 ."

read -p 'Command: ' command

if [ "$command" = '' ]

then

    echo 'Please enter command'

else

    echo $command

    read -p 'Shortcut: ' key

    if [ "$key" = '' ]

    then

        echo 'Please enter shortcut'

    else

        UNAME=$(uname)

        case $UNAME in

            Linux)
                    echo "alias $key='$command'" >> $HOME'/.bashrc'
                    echo "Done.. "
                    echo "You must reopen terminal to apply";;
            Darwin)
                    echo "alias $key='$command'" >> $HOME'/.profile'
                    echo "Done.. "
                    echo "You must reopen terminal to apply";;
            *) echo $UNAME ",not supported";;
        esac

    fi

fi
