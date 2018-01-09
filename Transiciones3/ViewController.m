//
//  ViewController.m
//  Transiciones3
//
//  Created by cice on 9/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *etiquetaContador;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.etiquetaContador.text = [NSString stringWithFormat:@"%ld", self.navigationController.viewControllers.count];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botonShowPulsado:(id)sender {

    //Cargamos la escena
    UIViewController *escenaVerde = [self.storyboard instantiateViewControllerWithIdentifier:@"escenaVerde"];
    
    // Las dos líneas hacen un funcionamiento parecido. Las dos hacen el push. La única diferencia es que si no hay navigation controller no haría nada.
    // EN OBJECTIVE C NO HAY ERROR DE NULL POINTER.
    //[self showViewController:escenaVerde sender:nil];
    [self.navigationController pushViewController:escenaVerde animated:true];
}

- (IBAction)botonPresentPulsado:(id)sender {
    
    UIViewController *escenaAzul = [self.storyboard instantiateViewControllerWithIdentifier:@"escenaAzul"];
    
    [self presentViewController:escenaAzul animated:true completion:nil];

}

- (IBAction)botonAutoShowPulsado:(id)sender {

    UIViewController *escenaRoja = [self.storyboard instantiateViewControllerWithIdentifier:@"escenaRoja"];
    
    [self showViewController:escenaRoja sender:nil];
    
}
- (IBAction)volverTresPasos:(id)sender {
    
    NSArray *escenasNavegacion = self.navigationController.viewControllers;
    
    UIViewController *escena3PasosAntes = escenasNavegacion[escenasNavegacion.count - 4];
    
    [self.navigationController popToViewController:escena3PasosAntes animated:true];
    
    
    /*[self.navigationController popViewControllerAnimated:true];
    [self.navigationController popViewControllerAnimated:true];
    [self.navigationController popViewControllerAnimated:true];*/
}

- (IBAction)allBack:(id)sender {

    
    // Las dos líneas hacen un funcionamiento parecido. Las dos hacen el push. La única diferencia es que si no hay navigation controller no haría nada.
    // EN OBJECTIVE C NO HAY ERROR DE NULL POINTER.
    //[self showViewController:escenaVerde sender:nil];
    [self.navigationController popToRootViewControllerAnimated:true];

}

@end
