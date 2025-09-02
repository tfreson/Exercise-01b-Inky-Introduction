/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

VAR pick_up_box = false

->cave_mouth



==cave_mouth==
you open your eyes and you find yourself in a dark damp cave there is a flash light on the ground you pick it up and look around 
you find two paths one leading east and one leading west. 
+ take the east path->east_tunnel
+ you take the west path ->west_tunnel

==west_tunnel==
you are in the west tunnel
+ go back ->cave_mouth
->END
==east_tunnel==
you take the east tunnel 
you come up on a room with 3 new tunnel leading forward right and left. 
there is also a small box on the ground. 
* pick up the box->box
+ go to the right ->right_tunnel
+ go to the left ->left_tunnel
+ go forward ->forward_tunnel
+go back->cave_mouth
->END
==right_tunnel==
you take the tunnel to the right 
on the ground you find 1 AAA battary 
you pick it up and go to put it in your pocket only to find out your pockets are too small.
+go back->east_tunnel
==left_tunnel==
you take the left tunnel you come into a room with a big rock in the center of it.
*move the rock
    you try to move the rock but can't ->left_tunnel
+go back ->east_tunnel
==forward_tunnel==
you take the tunnel straight ahead 
you find a small rock 
*move the rock->move_rock
    
+go back ->east_tunnel

== move_rock==
under the rock is a small key 
   *pick up the key ->pick_up_key
    *kick the key
        you kick the key and it goes flying and you lose sight of where it goes ->forward_tunnel
        
== pick_up_key==
        you pick up the key 
            *examine the key->examine
               
            *throw the key
                you throw the key and loose sight of it ->forward_tunnel
            *put key in your pocket
                you try to put the key in your pocket only to find out your pockets are too small. ->forward_tunnel


==examine==
    * try to open box 
            you open the box to find 3 AAA battary ->forward_tunnel
    +go back ->examine


==box==
you pick up the box
*examin the box
you look at the box it appears to be locked with a padlock. it is a 4 in cube.->east_tunnel
*go back
->east_tunnel

