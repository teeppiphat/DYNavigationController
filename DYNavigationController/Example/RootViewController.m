//
//  RootViewController.m
//  DYNavigationController
//
//  Created by Derek Yang on 05/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

- (void)setUpButtons;
- (void)moveToTheRightView;

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    [self setUpButtons];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)setUpButtons {
    UIButton *right = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [right setTitle:@"Right" forState:UIControlStateNormal];
    [right setFrame:CGRectMake(100, 100, 80, 40)];
    [right addTarget:self action:@selector(moveToTheRightView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:right];
}

- (void)moveToTheRightView {
    NSLog(@">>> here");
}

@end